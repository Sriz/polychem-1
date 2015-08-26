<?php echo $this->Html->link(__('New Calender Scrap'), array('action' => 'add'), ['class' => 'btn btn-primary pull-right']); ?>

<div class="calenderScraps index">
    <h2><?php echo __('Calender Scraps'); ?></h2>
    <table class="col-md-12 table-bordered table-striped table-condensed cf">
        <tr>
            <th><?php echo $this->Paginator->sort('date'); ?></th>
            <th><?php echo $this->Paginator->sort('resuable'); ?></th>
            <th><?php echo $this->Paginator->sort('lamps_plates'); ?></th>
            <th><?php echo $this->Paginator->sort('total_scrap_generated'); ?></th>
            <th class="actions"><?php echo __('Actions'); ?></th>
        </tr>
        <?php foreach ($calenderScraps as $calenderScrap): ?>
            <tr>
                <td><?php echo h($calenderScrap['CalenderScrap']['date']); ?>&nbsp;</td>
                <td><?php echo h($calenderScrap['CalenderScrap']['resuable']); ?>&nbsp;</td>
                <td><?php echo h($calenderScrap['CalenderScrap']['lamps_plates']); ?>&nbsp;</td>
                <td><?php echo h($calenderScrap['CalenderScrap']['total_scrap_generated']); ?>&nbsp;</td>
                <td class="actions">
                    <?php echo $this->Html->link(__('View'), array('action' => 'view', $calenderScrap['CalenderScrap']['id'])); ?>
                    <?php echo $this->Html->link(__('Edit'), array('action' => 'edit', $calenderScrap['CalenderScrap']['id'])); ?>
                    <?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $calenderScrap['CalenderScrap']['id']), null, __('Are you sure you want to delete # %s?', $calenderScrap['CalenderScrap']['id'])); ?>
                </td>
            </tr>
        <?php endforeach; ?>
    </table>
    <p>
        <?php
        echo $this->Paginator->counter(array(
            'format' => __('Page {:page} of {:pages}, showing {:current} records out of {:count} total, starting on record {:start}, ending on {:end}')
        ));
        ?>    </p>

    <div class="paging">
        <?php
        echo $this->Paginator->prev('< ' . __('previous'), array(), null, array('class' => 'prev disabled'));
        echo $this->Paginator->numbers(array('separator' => ''));
        echo $this->Paginator->next(__('next') . ' >', array(), null, array('class' => 'next disabled'));
        ?>
    </div>
</div>