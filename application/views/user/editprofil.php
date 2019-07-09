<h3>Edit Profil</h3>

<form action="<?php echo site_url('User/updateProfil');?>" method="post">
	<input type="text" name="fullname" class="form-control" value="<?php echo $user['fullname'];?>" placeholder="Nama Lengkap"><br>
	<input placeholder="Alamat Email" type="text" name="email" class="form-control" value="<?php echo $user['email'];?>"><br>
	<input placeholder="Nomor Kontak yang bisa dihubungi" type="text" name="kontak" class="form-control" value="<?php echo $user['kontak'];?>"><br>
	<select class="form-control select2" name="angkatan">
			<option selected="selected" value="<?php echo $user['angkatan'];?>">Angkatan <?php echo $user['angkatan'] ;?></option>
			<?php for($i=date('Y'); $i>=date('Y')-60; $i-=1){
			echo"<option value='$i'> $i </option>";
			}
			?>
		</select><br>
	<textarea placeholder="Alamat" colspan="5"  class="form-control" name="alamat"><?php echo $user['alamat'];?></textarea><br>
	<select class="select2 form-control" required name="pekerjaan">
			<option selected="selected" value="<?php echo $user['id_pk'];?>"><?php echo $user['jenis_pk'];?>Profesi Sekarang</option>
			<?php foreach($pk as $a){ ?>
				<option value="<?php echo $a->id_pk ;?>"><?php echo $a->jenis_pk;?></option>
			<?php };?>
		</select><br>
	<input placeholder="Tempat kerja" type="text" name="lokasi_krj" class="form-control" value="<?php echo $user['lokasi_krj'];?>"><br>
	<input placeholder="Posisi Anda di tempat kerja" type="text" name="posisi" class="form-control" value="<?php echo $user['posisi'];?>"><br>
	<input placeholder="Nama Universitas" type="text" name="universitas" class="form-control" value="<?php echo $user['universitas'];?>"><br>
	<input placeholder="Nama Fakultas" type="text" name="fakultas" class="form-control" value="<?php echo $user['fakultas'];?>"><br>
	<input placeholder="Jurusan" type="text" name="jurusan" class="form-control" value="<?php echo $user['jurusan'];?>"><br>
	<button class="btn btn-primary" class="form-control" type="submit">Update</button>
</form>