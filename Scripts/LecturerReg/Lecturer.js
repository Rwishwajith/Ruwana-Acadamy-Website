$.ajaxSetup({ cache: false });

var objLecturer = $('#LecturerID');

function LecturerDocReadyFunc() {
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
                                    LecturerDocReadyFunc();
                                }
                            });
                            LecturerDocReadyFunc();
                        } else {
                            dlg.html(result);
                            LecturerDocReadyFunc();
                            bindDlgEvents();
                        }
                    }
                });
                return false;
            });

            $('input[type="button"][value="Cancel"]', dlg).click(function () {
                closeDialogModal(dlg);
            });

            var objPayMonth = $('#MonthForPay', dlg);
            var objClass = $('#ClassID', dlg);
            var objClass = $('#ClassID', dlg);

            objPayMonth.change(function () {
                if (objClass.val() == "")
                    AlertIt("Please Select a Class");
                else {
                    $.getJSON(AppRoot + "Lecturer/LecturePayment/GetLectureRate", { classID: Number(objClass.val()), month: Number(objPayMonth.val()) }, function (jsn) {
                        $('#PaidStudentCount', dlg).val(jsn.paidStuCount);
                        $('#LectureRate', dlg).val(jsn.Rate);
                        $('#Amount', dlg).val(jsn.amount);
                    }).error(function (data, status, jqXHR) {
                        if (IsJson(data.responseText)) { AlertIt("ERROR: " + JSON.parse(data.responseText).Message); }
                        else { AlertIt("ERROR: " + data.statusText); }
                    });
                }
            });
        }

        $this.off(".ChildPopUp");
        $this.on("click.ChildPopUp", function (e) {
            e.preventDefault();
            var hrf = this.href;
            if ($this.attr("title") == "Add Payment" || $this.attr("title") == "Edit Payment") {
                if (objLecturer.val() == 0) {
                    AlertIt("Please select a Lecturer frist.");
                    return;
                }
                hrf = hrf + "&lecturerId=" + objLecturer.val();
            }
            dlg.load(hrf, function (response, status, xhr) {
                if (status == "error") {
                    AlertIt("ERROR: " + xhr.status + "-" + xhr.statusText);
                }
                else {
                    LecturerDocReadyFunc();
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
                                LecturerDocReadyFunc();
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

    LecturerDocReadyFunc();

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