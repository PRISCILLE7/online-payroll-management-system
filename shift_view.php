<?php
include_once 'header_h.php';
?>
<?php
include_once 'roles.php';
?>

<form action="#" method="post" id="Shift_view">
    <section class="content">
        <div class="container-fluid">
            <div class="block-header">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2><b>SHIFT VIEW<div style="margin-left: 85%">
                                <input class="btn btn-primary waves-effect" name="add" type="submit" formaction="./shift.php" value="ADD SHIFT">
                            </b></div></h2>
                        </div>
                        <div class="body">
                            <div class="dataTables_wrapper form-inline dt-bootstrap" id="DataTables_Table_0_wrapper">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="dataTables_length" id="DataTables_Table_0_length">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="dataTables_filter" id="DataTables_Table_0_filter">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <table class="table table-bordered table-striped table-hover js-basic-example dataTable" id="DataTables_Table_0" role="grid" aria-describedby="DataTables_Table_0_info">
                                            <thead>
                                                <tr role="row">
                                                    <th tabindex="0" class="sorting_asc" aria-controls="DataTables_Table_0" style="width: 191px;" aria-label="SHIFT ID: activate to sort column descending" aria-sort="ascending" rowspan="1" colspan="1">SHIFT ID</th>
                                                    <th tabindex="0" class="sorting" aria-controls="DataTables_Table_0" style="width: 309px;" aria-label="SHIFT NAME: activate to sort column ascending" rowspan="1" colspan="1">SHIFT NAME</th>
                                                    <th tabindex="0" class="sorting" aria-controls="DataTables_Table_0" style="width: 143px;" aria-label="SHIFT IN TIME: activate to sort column ascending" rowspan="1" colspan="1">SHIFT IN TIME</th>
                                                    <th tabindex="0" class="sorting" aria-controls="DataTables_Table_0" style="width: 71px;" aria-label="SHIFT OUT TIME: activate to sort column ascending" rowspan="1" colspan="1">SHIFT OUT TIME</th>
                                                    <th tabindex="0" class="sorting" aria-controls="DataTables_Table_0" style="width: 135px;" aria-label="VIEW MORE: activate to sort column ascending" rowspan="1" colspan="1">VIEW MORE</th>
                                                    <th tabindex="0" class="sorting" aria-controls="DataTables_Table_0" style="width: 110px;" aria-label="UPDATE: activate to sort column ascending" rowspan="1" colspan="1">UPDATE</th>
                                                    <th tabindex="0" class="sorting" aria-controls="DataTables_Table_0" style="width: 110px;" aria-label="DELETE: activate to sort column ascending" rowspan="1" colspan="1">DELETE</th>
                                                </tr>
                                            </thead>
                                            <?php
                                            include_once 'config/config.php';
                                            $q = "Select * from shift";
                                            $status = mysqli_query($connection_obj, $q);
                                            if ($status) {
                                                while ($row = mysqli_fetch_assoc($status)) {
                                                    echo '<tr class="odd" role="row">';
                                                    echo "<td class='sorting_1'><b>" . $row['Shift_id'] . "</b></td>";
                                                    echo "<td class='sorting_1'>" . $row['Shift_name'] . "</td>";
                                                    echo "<td class='sorting_1'>" . $row['In_time'] . "</td>";
                                                    echo "<td class='sorting_1'>" . $row['Out_time'] . "</td>";
                                                    echo "<td class='sorting_1'><center><a href=shift_viewmore.php?id=" . $row['Shift_id'] . "><button class='btn btn-info btn-circle-lg waves-effect waves-circle waves-float' name=information type='button'><i class='material-icons'>information</i></button></a></td>";
                                                    echo "<td class='sorting_1'><center><a href=Shift1.php?id=" . $row['Shift_id'] . "><button class='btn btn-success btn-circle-lg waves-effect waves-circle waves-float' name='update' type='button'><i class='material-icons'>update</i></button></a></td>";
                                                    echo "<td class='sorting_1'><center><a href=shift_delete.php?id=" . $row['Shift_id'] . "><button class='btn btn-danger btn-circle-lg waves-effect waves-circle' waves-float name=delete type='button' ><i class='material-icons'>delete</i></button></a></td>";
                                                    echo "</tr>";
                                                }
                                                echo "</tbody> </table>";
                                            } else {
                                                echo " error";
                                            }
                                            ?>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <center>
            <a href="<?= ADMIN_URL ?>home_page.php"><input class="btn btn-primary waves-effect" name="close" type="button" value="CLOSE"></a></button>
        </center>
    </section>
</form>
<?php
include_once 'footer_h.php';
?>