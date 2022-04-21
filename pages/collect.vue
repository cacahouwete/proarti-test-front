<template>
  <v-row>
    <v-col class="text-center">
      <img src="/v.png" alt="Vuetify.js" class="mb-5" />
      <h1>Collect Project</h1>

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
  name: 'CollectPage',
  data() {
    return {
      headers: [
        {text: 'ID', value: 'id'},
        {text: 'Slug', value: 'slug'},
        {text: 'Target', value: 'target'},
        {text: 'Goal', value: 'goal'},
        {text: 'Position', value: 'position'},
        {text: 'Url', value: 'url'},
        {text: 'Owner', value: 'owner'},
        {text: 'Date de début', value: 'beginAt'},
        {text: 'Date de fin', value: 'endAt'},
        {text: 'Donations', value: 'donations'},
      ],
      rows: [
        {
          id: 5142,
          slug: "aquaterra-0",
          target: "/api/projects/4457",
          goal: 0,
          position: 0,
          url: "/collect/project/aquaterra/0",
          owner: "/api/organizations/75450",
          beginAt: null,
          endAt: null,
          donations: 0
        },
        {
          id: 5141,
          slug: "valensole-0",
          target: "/api/projects/4456",
          goal: 0,
          position: 0,
          url: "/collect/project/valensole/0",
          owner: "/api/organizations/98727",
          beginAt: null,
          endAt: null,
          donations: 0
        },
        {
          id: 5140,
          slug: "frangines-a-aurillac-0",
          target: "/api/projects/4455",
          goal: 6000,
          position: 0,
          url: "/collect/project/frangines-au-festival-daurillac/0",
          owner: "/api/organizations/98714",
          beginAt: "2022-05-18",
          endAt: "2022-06-24",
          donations: 0
        },
        {
          id: 5139,
          slug: "ordures-0",
          target: "/api/projects/4454",
          goal: 0,
          position: 0,
          url: "/collect/project/ordures/0",
          owner: "/api/organizations/98694",
          beginAt: null,
          endAt: null,
          donations: 0
        },
        {
          id: 5138,
          slug: "fernan-chante-a-avignon-off-2022-0",
          target: "/api/projects/4453",
          goal: 0,
          position: 0,
          url: "/collect/project/fernan-chante-a-avignon-off-2022/0",
          owner: "/api/organizations/98496",
          beginAt: "2022-05-01",
          endAt: "2022-07-30",
          donations: 0
        },
        {
          id: 5137,
          slug: "agrios-0",
          target: "/api/projects/4452",
          goal: 0,
          position: 0,
          url: "/collect/project/agrios/0",
          owner: "/api/organizations/47306",
          beginAt: null,
          endAt: null,
          donations: 0
        },
        {
          id: 5136,
          slug: "les-yeux-grands-ouverts-0",
          target: "/api/projects/4451",
          goal: 0,
          position: 0,
          url: "/collect/project/les-yeux-grands-ouverts/0",
          owner: "/api/organizations/98679",
          beginAt: null,
          endAt: null,
          donations: 0
        }
      ]
    }
  },
  mounted() {
    fetch('https://www.proarti.fr/api/collect_projects.json')
      .then(response => response.json())
      .then(collect => {
        const row = {};
          row.id =  collect.id;
          row.slug = collect.slug;
          row.target = collect.target.title;
          row.goal =  collect.goal;
          row.position = collect.position;
          row.url = collect.url;
          row.owner = collect.owner.name;
          row.beginAt =  collect.beginAt;
          row.endAt = collect.endAt;
          row.donations = collect.donations;
        this.rows.push(row);
      });
  }
}
</script>
