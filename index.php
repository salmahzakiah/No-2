
                   
<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Hitung Gaji</h1>
</div>
    <div class="card shadow">
        <div class="card-body">
            <div class="row mb-4">
                   <form action="store.php" method="post">
                       <input type="hidden" name="csrf_token" value="<?php echo $_SESSION['csrf_token']; ?>">
            </div>
            <div class="col-8">
                <div class="card-body">
                    <button type="reset" class="btn btn-lg btn-secondary mb-4">Bersihkan Kolom</button>
                    <table class="table table-borderless">
                        <tr>
                            <td width="330px">
                             <div class="form-group">
                                    <label>&nbsp;Jumlah Jam Kerja</label>&nbsp;
                                    <input type="number" name="jumlah_jam" id="jumlah_jam" class="form-control" required>
                                     </div>
                            </td>
                            
                        </tr>
                        <tr>
                            <td>
                                <div class="form-group">
                                    <label>Tarif / Jam</label>&nbsp;
                                    <input type="number" name="tarif_per_jam" id="tarif_per_jam" class="form-control" required>
                                </div>
                            </td>
                            <td width="350px"></td>
                        </tr>
                        <tr>
                            <td>
                                  <button type="button" id="Hitung" onclick="hitungGaji()" class="btn btn-lg btn-primary">
                            Hitung
                                </button>
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>
                                <div class="form-group">
                                    <label>Total Gaji</label>&nbsp;
                                    <input type="text" id="total_gaji" class="form-control" readonly>
                                </div>
                            </td>
                        </tr>
                    </table>
                    </form>
                </div>
            </div>
        </div>
    </div>
<script>
function hitungGaji() {
    const jumlahJam = parseFloat(document.getElementById('jumlah_jam').value);
    const tarifPerJam = parseFloat(document.getElementById('tarif_per_jam').value);
    const batasLembur = 40;
    let totalGaji = 0;

    if (jumlahJam > batasLembur) {
        const jamLembur = jumlahJam - batasLembur;
        const gajiPokok = batasLembur * tarifPerJam;
        const gajiLembur = jamLembur * (1.5 * tarifPerJam);
        totalGaji = gajiPokok + gajiLembur;
    } else {
        totalGaji = jumlahJam * tarifPerJam;
    }

    document.getElementById('total_gaji').value = `Rp${totalGaji.toFixed(2)}`;
}
</script>


