<div class="box box-success">
	<div class="box-header">
		<div class="box-title"><h4>Daftar User Belum Aktif</h4></div>
	</div>
	<div class="box-body">
		<div class="table-responsive">
			<table id="example1" class="table">
				<thead>
					<th width="5%">No</th>
					<th width="60%">Nama Lengkap</th>
					<th width="10%">Status</th>
					<th width="25%">Aksi</th>
				</thead>
				<?php $no=0; foreach ($ud as $d): $no++  ?>
				<tr>
					<td><?php echo $no;?></td>
					<td><a href="<?php echo site_url('User/profile/'.$d->id_profil);?>"><?php echo $d->fullname;?></a></td>
					<td><?php if ($d->active==='0'){echo "<span class='label bg-yellow'>Belum Aktif</span>";} else if ($d->active==='1'){echo "<span class='label bg-green'>Aktif</span>";} ;?></td>
					<td><a href="<?php echo site_url('User/activate/'.$d->id_user);?>" class="btn btn-primary">Aktifkan</a> <a href="<?php echo site_url('User/delete/'.$d->id_user);?>" onclick="return confirm('Apakah Anda Ingin Menghapus Data Ini');" class="btn btn-danger"><i class="fa fa-trash"></i></a></td>
				</tr>
				<?php endforeach; ?>
			</table>
		</div>	
	</div>
</div>

<div class="box box-success">
	<div class="box-header">
		<div class="box-title"><h4>Daftar User Aktif</h4></div>
	</div>
	<div class="box-body">
		<div class="table-responsive">
			<table id="example2" class="table">
				<thead>
					<th width="5%">No</th>
					<th width="40%">Nama Lengkap</th>
					<th width="15%">Login Terakhir</th>
					<th width="10%">Status</th>
					<th width="30%">Aksi</th>
				</thead>
				<?php $no=0; foreach ($ua as $a): $no++  ?>
				<tr>
					<td><?php echo $no;?></td>
					<td><a href="<?php echo site_url('User/profile/'.$a->id_profil);?>"><?php echo $a->fullname;?></a></td>
					<td><?php if($a->last_login === '0000-00-00 00:00:00'){echo "Belum Login";} else {echo time_ago($a->last_login);}  ;?></td>
					<td><?php if ($a->active==='0'){echo "<span class='label bg-yellow'>Belum Aktif</span>";} else if ($a->active==='1'){echo "<span class='label bg-green'>Aktif</span>";} ;?></td>
					<td><a href="<?php echo site_url('User/deactive/'.$a->id_user);?>" class="btn btn-warning">Non-aktifkan</a>
					<?php if($a->role==='Member'){ ?>
					<a href="<?php echo site_url('User/makeAdmin/'.$a->id_user);?>" class="btn btn-primary">Jadikan Admin</a>
					<?php } else {?>
					<a href="<?php echo site_url('User/makeMember/'.$a->id_user);?>" class="btn btn-success">Jadikan Member</a>
					<?php };?>
					</td>
				</tr>
				<?php endforeach; ?>
			</table>
		</div>	
	</div>
</div>

