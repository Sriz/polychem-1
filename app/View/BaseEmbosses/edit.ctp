<div class="baseEmbosses form">
<?php echo $this->Form->create('BaseEmboss'); ?>
	<fieldset>
		<legend><?php echo __('Edit Base Emboss'); ?></legend>
	<?php
		echo $this->Form->input('id');
		echo $this->Form->input('Brand');
		echo $this->Form->input('Dimension');
		echo $this->Form->input('Type');
		echo $this->Form->input('Color');
		echo $this->Form->input('Emboss');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $this->Form->value('BaseEmboss.id')), null, __('Are you sure you want to delete # %s?', $this->Form->value('BaseEmboss.id'))); ?></li>
		<li><?php echo $this->Html->link(__('List Base Embosses'), array('action' => 'index')); ?></li>
	</ul>
</div>
