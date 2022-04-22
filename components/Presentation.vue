<template>
  <div class="presentation">
    <div class="wrapper-reviews">
      <div :class="`card-reviews card-${index}`" v-for="(item, index) in 3" :key="index">
        <Cards v-bind:index="index"/>
      </div>
    </div>
  </div>
</template>

<script>
import cards from "~/components/Cards.vue"

export default {
  name: "Presentation",
  components: {
    cards,
  }
}
</script>
<style scoped lang="css">
@media screen and (min-width: 300px) {
  .presentation {
    width: 100%;
    display: flex;
    justify-content: center;
  }

  .wrapper-reviews {
    width: 50%;
    height: 100vh;
    position: relative;
  }

  .wrapper-reviews .card-reviews {
    position: absolute;
    transform: translate(-50%, -50%);
    top: 50%;
    left: 50%;
  }

  .wrapper-reviews .card-0 {
    transform: translate(-38%, -50%);
    top: 10%;
    left: 10%;
  }

  .wrapper-reviews .card-1 {
    top: 50%;
    left: 50%;
  }

  .wrapper-reviews .card-2 {
    transform: translate(-66%, -50%);
    top: 90%;
    left: 90%;
  }
}

</style>
