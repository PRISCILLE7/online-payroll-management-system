<?php
    include_once 'header_h.php';
?>

<?php
    include_once 'roles.php';
?>

<form action="#" method="post" id="Holiday_view">
 
    <section class="content">
        <div class="container-fluid">
            <div class="block-header">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2><b>HOLIDAY VIEW </b></h2>
                        </div>
                        <div class="body">
                            <div class="dataTables_wrapper form-inline dt-bootstrap" id="DataTables_Table_0_wrapper">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="dataTables_length" id="DataTables_Table_0_length"></div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="dataTables_filter" id="DataTables_Table_0_filter"></div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <table class="table table-bordered table-striped table-hover js-basic-example dataTable" id="DataTables_Table_0" role="grid" aria-describedby="DataTables_Table_0_info">
                                            <thead>
                                                <tr role="row">
                                                    <th tabindex="0" class="sorting_asc" aria-controls="DataTables_Table_0" style="width: 191px;" aria-label="HOLIDAY ID: activate to sort column descending" aria-sort="ascending" rowspan="1" colspan="1">HOLIDAY ID</th>
                                                    <th tabindex="0" class="sorting" aria-controls="DataTables_Table_0" style="width: 309px;" aria-label="HOLIDAY NAME: activate to sort column ascending" rowspan="1" colspan="1">HOLIDAY NAME</th>
                                                    <th tabindex="0" class="sorting" aria-controls="DataTables_Table_0" style="width: 309px;" aria-label="HOLIDAY DATE: activate to sort column ascending" rowspan="1" colspan="1">HOLIDAY DATE</th>
                                                    <th tabindex="0" class="sorting" aria-controls="DataTables_Table_0" style="width: 135px;" aria-label="VIEW MORE: activate to sort column ascending" rowspan="1" colspan="1">VIEW MORE</th>
                                                </tr>
                                            </thead>
                                            <?php 
                                                include_once 'config/config.php';
                                                $q = "Select * from holidays ";
                                                $status = mysqli_query($connection_obj, $q);

                                                if ($status) {
                                                    while ($row = mysqli_fetch_assoc($status)) {
                                                        echo '<tr class="odd" role="row">';
                                                        echo "<td class='sorting_1'><b>".$row['Holiday_id']."</b></td>";
                                                        echo "<td class='sorting_1'>".$row['Holiday_name']."</td>";
                                                        echo "<td class='sorting_1'>".$row['Holiday_date']."</td>";
                                                        echo "<td class='sorting_1'>
                                                                <center>
                                                                    <a href=holiday_viewmore_emp.php?id=".$row['Holiday_id'].">
                                                                        <button class='btn btn-info btn-circle-lg waves-effect waves-circle waves-float' name=information type='button'>
                                                                            <i class='material-icons'>information</i>
                                                                        </button>
                                                                    </a>
                                                                </center>
                                                            </td>";
                                                        echo "</tr>";
                                                    }
                                                echo "</tbody></table>"; 
                                            } else {
                                                echo " error";
                                            }
                                            ?>
                                            <p id="demo"></p>
                                            <script>
                                                function myFunction() {
                                                    var txt;
                                                    var r = confirm("are u sure u want to delete?");
                                                    if (r == true) {
                                                        txt = "You pressed OK!";
                                                    } else {
                                                        txt = "You pressed Cancel!";
                                                    }
                                                    document.getElementById("demo").innerHTML = txt;
                                                }
                                            </script>  
                                        </div>
                                    </td>
                                </tr>
                            </thead>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <center>
        <a href="<?=ADMIN_URL?>home_page.php">
            <input class="btn btn-primary waves-effect" name="close" type="button" value="CLOSE">
        </a>
    </center>
</section>
</form>

<?php
    include_once 'footer_h.php';
?>
