<template>
  <v-row>
    <v-col cols="12">
      <v-data-table
        :headers="headers"
        :items="collect"
        :page.sync="page"
        :items-per-page="itemsPerPage"
        hide-default-footer
        :disable-filtering="true"
        :disable-sort="true"
        :loading="loading"
      >
      </v-data-table>
      <div class="text-center pt-2">
        <v-pagination v-model="page" :length="pageCount"></v-pagination>
      </div>
    </v-col>
  </v-row>
</template>

<script>
export default {
  name: 'ProjectComponent',
  data() {
    return {
      loading: false,
      page: 1,
      pageCount: 0,
      itemsPerPage: 30,
      collect: [],
      headers: [
        { text: 'ID', value: 'id' },
        { text: 'Goal', value: 'goal' },
        { text: 'Date début', value: 'beginAt' },
        { text: 'Date fin', value: 'endAt' },
        { text: 'Slug', value: 'slug' },
      ],
    }
  },
  watch: {
    page() {
      this.readDataFromAPI()
    },
  },

  mounted() {
    this.readDataFromAPI()
  },
  methods: {
    async readDataFromAPI() {
      this.loading = true
      const { data } = await this.$axios.get(
        `/api/collect_projects?page=${this.page}`
      )
      this.collect = data['hydra:member']
      this.pageCount = Math.round(
        data['hydra:totalItems'] / Object.keys(data['hydra:member']).length
      )
      this.loading = false
    },
  },
}
</script>
