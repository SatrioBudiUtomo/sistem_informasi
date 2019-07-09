<h4>Data Alumni Berdasarkan Pekerjaan "<?php echo $pk['jenis_pk'] ;?>"</h4>
<div class="box box-success">
	<div class="box-body">
		<table id="example1" class="table table-bordered table-striped">
			<thead>
				<th width="5%">No</th>
				<th width="35%">Nama Lengkap</th>
				<th>Tempat Kerja</th>
				<th>Posisi di tempat kerja</th>
				<th>Universitas</th>
				<th>Fakultas</th>				
				<th>Jurusan</th>				
			</thead>
			<?php $no=0; foreach($upk as $k): $no++ ; ?>
			<tr>
				<td><?php echo $no;?></td>
				<td><a href="<?php echo site_url('User/profile/'.$k->id_profil);?>"><?php echo $k->fullname;?></a></td>
				<td><?php echo $k->lokasi_krj;?></td>
				<td><?php echo $k->posisi;?></td>
				<td><?php echo $k->universitas;?></td>
				<td><?php echo $k->fakultas;?></td>
				<td><?php echo $k->jurusan;?></td>
			</tr>
			<?php endforeach ;?>
		</table>
	</div>
</div>