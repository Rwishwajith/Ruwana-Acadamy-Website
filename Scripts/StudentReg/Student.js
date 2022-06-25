$.ajaxSetup({ cache: false });

function StudentDocReadyFunc() {
    DocReadyFunc();

    $("a[data-popup-editor]").each(function () {
        var $this = $(this);
        var dlg = GetDialogObj($this);

        function winResFunc() { dlgOnResize(dlg, 500); }

        dlg.dialog({
            height: "auto",
            show: "clip",
            modal: true,
            autoOpen: false,
            open: function (event, ui) {
                var closeBtn = $('.ui-dialog-titlebar-close');
                closeBtn.html('<span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span>');
                dlg_z_index++;
                $(".ui-dialog").css("z-index", dlg_z_index.toString());
                dlg.dialog("option", "position", { my: "center", at: "center", of: window });

                $("body").css({
                    overflow: 'hidden'
                });

                $(".ui-widget-overlay").bind('click', function () { dlg.dialog("close"); });

                winResFunc();
                window.addEventListener("resize", winResFunc);
            },
            beforeClose: function (event, ui) {
                $("body").css({ overflow: 'inherit' });
                window.removeEventListener("resize", winResFunc);
            }
        });

        function bindDlgEvents() {
            $('input[type="submit"][value="Save"]', dlg).closest("form").submit(function () {
                $.ajax({
                    url: this.action,
                    type: this.method,
                    data: $(this).serialize(),
                    success: function (result) {
                        if (result.success) {
                            closeDialogModal(dlg);
                            $('#ChildContent').load(result.url, function (response, status, xhr) {
                                if (status == "error") {
                                    AlertIt("ERROR: " + xhr.status + "-" + xhr.statusText);
                                }
                                else {
                                    calcTotal();
                                    StudentDocReadyFunc();
                                }
                            });
                            StudentDocReadyFunc();
                        } else {
                            dlg.html(result);
                            StudentDocReadyFunc();
                            bindDlgEvents();
                        }
                    }
                });
                return false;
            });

            $('input[type="button"][value="Cancel"]', dlg).click(function () {
                closeDialogModal(dlg);
            });

            var objType = $('#Type', dlg);
            var objPaidMonth = $('#PaidMonth', dlg);
            if (objType.val() == 0)
                SetComboReadonly(objPaidMonth,true);
            else
                SetComboReadonly(objPaidMonth, false);

            objType.change(function () {
                if (objType.val() == 0)
                    SetComboReadonly(objPaidMonth, true);
                else
                    SetComboReadonly(objPaidMonth, false);
            });

            //var objExpTyp = $('#ExpenseTypeID', dlg);
            //objExpTyp.change(function () {
            //    $.getJSON(AppRoot + "Program/Budgets/GetExpenseRate", { expenseTypeID: Number(objExpTyp.val()) }, function (jsn) {
            //        $('#OrgUnitPrice', dlg).val(jsn.Rate);
            //        $('#UnitPrice', dlg).val(jsn.Rate);
            //    }).error(function (data, status, jqXHR) {
            //        if (IsJson(data.responseText)) { AlertIt("ERROR: " + JSON.parse(data.responseText).Message); }
            //        else { AlertIt("ERROR: " + data.statusText); }
            //    });
            //});
        }

        $this.off(".ChildPopUp");
        $this.on("click.ChildPopUp", function (e) {
            e.preventDefault();
            dlg.load(this.href, function (response, status, xhr) {
                if (status == "error") {
                    AlertIt("ERROR: " + xhr.status + "-" + xhr.statusText);
                }
                else {
                    StudentDocReadyFunc();
                    bindDlgEvents();

                    dlg.dialog("option", "title", $this.data("title"));
                    dlgOnResize(dlg);
                    dlg.dialog("open");
                }
            });
        });
    });

    $("button[data-popup-delete]").each(function () {
        var $this = $(this);
        var dlg = GetDialogObj($this);

        $this.closest("form").off(".ChildPopUp");
        $this.closest("form").on("submit.ChildPopUp", function () {
            $.ajax({
                url: this.action,
                type: this.method,
                data: $(this).serialize(),
                success: function (result) {
                    closeDialogModal(dlg);
                    if (result.url) {
                        $('#ChildContent').load(result.url, function (response, status, xhr) {
                            if (status == "error") {
                                AlertIt("ERROR: " + xhr.status + "-" + xhr.statusText);
                            }
                            else {
                                calcTotal();
                                StudentDocReadyFunc();
                            }
                        });
                    }
                    else { AlertIt("ERROR: " + result.msg); }
                },
                error: function (data, status, jqXHR) {
                    if (IsJson(data.responseText)) { AlertIt("ERROR: " + JSON.parse(data.responseText).Message); }
                    else { AlertIt("ERROR: " + data.statusText); }
                }
            });
            objProg.hide();
            return false;
        });
    });
}

$(function () {

    StudentDocReadyFunc();

});

function calcTotal() {
    var objtblPayments = $('#tblPayments');
    var totAmount = 0;

    objtblPayments.find('tbody tr').each(function () {
        var amount = $(this).find('td#payamount input[type = "hidden"]').val();
        if (amount != null)
            totAmount = Number(totAmount) + Number(amount);
    });
    $('#TotalAmount').val(totAmount.toFixed(2));
}