<template>
  <v-row>
    <v-col class="text-center">
      <img src="/v.png" alt="Vuetify.js" class="mb-5" />
      <h2>Data</h2>

      <v-data-table
        :headers="headers"
        :items="rows"
        :items-per-page="5"
        class="elevation-1"
      ></v-data-table>
    </v-col>
  </v-row>
</template>

<script>

export default {
  name: 'DataPage',

  data() {
    return {
      headers: [
        { text: 'First Name', value: 'firstname' },
        { text: 'Last Name', value: 'lastname' },
        { text: 'Donation Amount', value: 'amount' },
        { text: 'Project Name', value: 'projectName' },
        { text: 'Reward', value: 'reward' },
        { text: 'Reward Quantity', value: 'rewardQuantity' },
      ],
      rows: [
        {
          firstname: 'valeur',
          lastname: 'statique',
          amount: 150,
          projectName: 'aaa',
          reward: 'aaa',
          rewardQuantity: 150
        },
        {
          firstname: 'valeur',
          lastname: 'statique',
          amount: 250,
          projectName: 'bbb',
          reward: 'bbb',
          rewardQuantity: 150
        },{
          firstname: 'valeur',
          lastname: 'statique',
          amount: 150,
          projectName: 'aaa',
          reward: 'aaa',
          rewardQuantity: 150
        },
        {
          firstname: 'valeur',
          lastname: 'statique',
          amount: 150,
          projectName: 'bbb',
          reward: 'bbb',
          rewardQuantity: 150
        },{
          firstname: 'valeur',
          lastname: 'statique',
          amount: 150,
          projectName: 'aaa',
          reward: 'aaa',
          rewardQuantity: 150
        },
        {
          firstname: 'valeur',
          lastname: 'statique',
          amount: 150,
          projectName: 'bbb',
          reward: 'bbb',
          rewardQuantity: 150
        },{
          firstname: 'valeur',
          lastname: 'statique',
          amount: 150,
          projectName: 'aaa',
          reward: 'aaa',
          rewardQuantity: 150
        }
      ]
    }
  },

  mounted() {
    fetch('http://proarti-test.localhost/api/donations')
    .then(response => response.json())
    .then(donation => {
      const row = {};

      row.firstname = donation.person.firstname;
      row.lastname = donation.person.lastname;
      row.amount = donation.amount;
      row.projectName = donation.projet.name;
      row.reward = donation.reward.reward;
      row.rewardQuantity = donation.reward.rewardQuantity;

      this.rows.push(row);
    });
  }
}
</script>
