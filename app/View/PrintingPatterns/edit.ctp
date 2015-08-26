<div class="printingPatterns form">
<?php echo $this->Form->create('PrintingPattern'); ?>
	<fieldset>
		<legend><?php echo __('Edit Printing Pattern'); ?></legend>
	<?php
		echo $this->Form->input('id');
		echo $this->Form->input('pattern_name');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $this->Form->value('PrintingPattern.id')), null, __('Are you sure you want to delete # %s?', $this->Form->value('PrintingPattern.id'))); ?></li>
		<li><?php echo $this->Html->link(__('List Printing Patterns'), array('action' => 'index')); ?></li>
	</ul>
</div>
