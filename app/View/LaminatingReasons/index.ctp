<div class="laminatingReasons index">
	<h2><?php echo __('Laminating Reasons'); ?></h2>
	<table class="col-md-12 table-bordered table-striped table-condensed cf">
	<tr>
			<th><?php echo $this->Paginator->sort('id'); ?></th>
			<th><?php echo $this->Paginator->sort('reason'); ?></th>
			<th><?php echo $this->Paginator->sort('type'); ?></th>
			<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
	<?php foreach ($laminatingReasons as $laminatingReason): ?>
	<tr>
		<td><?php echo h($laminatingReason['LaminatingReason']['id']); ?>&nbsp;</td>
		<td><?php echo h($laminatingReason['LaminatingReason']['reason']); ?>&nbsp;</td>
		<td><?php echo h($laminatingReason['LaminatingReason']['type']); ?>&nbsp;</td>
		<td class="actions">
			<?php echo $this->Html->link(__('View'), array('action' => 'view', $laminatingReason['LaminatingReason']['id'])); ?>
			<?php echo $this->Html->link(__('Edit'), array('action' => 'edit', $laminatingReason['LaminatingReason']['id'])); ?>
			<?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $laminatingReason['LaminatingReason']['id']), null, __('Are you sure you want to delete # %s?', $laminatingReason['LaminatingReason']['id'])); ?>
		</td>
	</tr>
<?php endforeach; ?>
	</table>
	<p>
	<?php
	echo $this->Paginator->counter(array(
	'format' => __('Page {:page} of {:pages}, showing {:current} records out of {:count} total, starting on record {:start}, ending on {:end}')
	));
	?>	</p>
	<div class="paging">
	<?php
		echo $this->Paginator->prev('< ' . __('previous'), array(), null, array('class' => 'prev disabled'));
		echo $this->Paginator->numbers(array('separator' => ''));
		echo $this->Paginator->next(__('next') . ' >', array(), null, array('class' => 'next disabled'));
	?>
	</div>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('New Laminating Reason'), array('action' => 'add')); ?></li>
	</ul>
</div>
