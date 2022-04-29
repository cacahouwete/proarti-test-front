<template>
  <v-main>
    <OrganizationComponent />
  </v-main>
</template>

<script>
import OrganizationComponent from '../components/OrganizationComponent.vue'

export default {
  name: 'App',

  components: {
    OrganizationComponent,
  },

  data: () => ({
    //
  }),
}
</script>
