<h3>Formulir Registrasi</h3>
<form method="post" action="<?php echo site_url('User/daftar');?>">
	
		<input type="text" name="fullname" required placeholder="Nama Lengkap" class="form-control"><br>

		<input type="text" name="email" required placeholder="Alamat Email" class="form-control"><br>
		<select class="form-control select2" name="jk" required>
		<option selected="selected" disabled="disabled">Pilih Jenis Kelamin</option>
			<option value="L">Laki-Laki</option>
			<option value="P">Perempuan</option>
		</select><br>
		<select class="form-control select2" name="angkatan">
			<option selected="selected" disabled="disabled">Pilih Angkatan</option>
			<?php for($i=date('Y'); $i>=date('Y')-60; $i-=1){
			echo"<option value='$i'> $i </option>";
			}
			?>
		</select><br>
		<input type="password" required name="password" class="form-control" placeholder="Password (min. 8 karakter)"><br>
		<input type="password" required name="re-password" class="form-control" placeholder="Ketik Ulang Password" required="Masukkan Password"><br>
		<input type="text" name="kontak" class="form-control" placeholder="Nomor Kontak yang bisa dihubungi"><br>
		<textarea name="alamat" class="form-control" colspan="3" placeholder="Alamat Rumah"></textarea><br>
		<select class="select2 form-control" required name="pekerjaan">
			<option selected="selected" disabled="disabled">Profesi Sekarang</option>
			<?php foreach($pk as $a){ ?>
				<option value="<?php echo $a->id_pk ;?>"><?php echo $a->jenis_pk;?></option>
			<?php };?>
		</select><br>
		<input type="text" name="lokasi_krj" class="form-control" placeholder="Tempat kerja" required><br>
		<input type="text" name="posisi" class="form-control" placeholder="Posisi Anda di Tempat kerja" required><br>
		<input type="text" name="universitas" class="form-control" placeholder="Nama Universitas" required><br>
		<input type="text" name="fakultas" class="form-control" placeholder="Nama Fakultas" required><br>
		<input type="text" name="jurusan" class="form-control" placeholder="Jurusan" required><br>
		<i>*isi dengan (-) bila tidak ada</i>
		<button class="btn btn-primary form-control" type="submit">DAFTAR</button>
		</form>
	