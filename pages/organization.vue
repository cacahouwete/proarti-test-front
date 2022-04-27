<template>
  <v-row>
    <v-col cols="12">
      <v-expansion-panels>
        <v-expansion-panel v-for="(item, i) in organization" :key="i">
          <v-expansion-panel-header>
            {{ item.name }}
          </v-expansion-panel-header>
          <v-expansion-panel-content>
            {{ item.biography }}
          </v-expansion-panel-content>
        </v-expansion-panel>
      </v-expansion-panels>
    </v-col>
  </v-row>
</template>

<script>
export default {
  name: 'OrganizationPage',

  data() {
    return {
      organization: null,
    }
  },

  async mounted() {
    const { data } = await this.$axios.get('/api/organizations')
    this.organization = data['hydra:member']
  },
}
</script>
