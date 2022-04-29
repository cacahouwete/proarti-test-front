<template>
  <v-main>
    <ProjectComponent />
  </v-main>
</template>

<script>
import ProjectComponent from '../components/ProjectComponent.vue'

export default {
  name: 'App',

  components: {
    ProjectComponent,
  },

  data: () => ({
    //
  }),
}
</script>
