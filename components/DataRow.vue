<template>
  <p>{{ firstname }} {{ lastname }} | {{ amount }} | {{ projectName }} | {{ reward }} {{ rewardQuantity }}</p>
</template>

<script>
export default {
  name: 'DataRow',

  props: {
    'firstname': String,
    'lastname': String,
    'amount': Number,
    'project-name': String,
    'reward': String,
    'reward-quantity': Number
  }
}
</script>

