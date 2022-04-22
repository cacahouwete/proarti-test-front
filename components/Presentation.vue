<template>
  <div class="presentation">
    <div class="wrapper_reviews">
      <div class="general_reviews">
        <div :class="`card_reviews card${index}`" v-for="(item, index) in 3" :key="index">
          <Cards v-bind:index = "index"/>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import cards from "~/components/Cards.vue"
export default {
  name: "Presentation",
  components:{
    cards,
  }
}
</script>
<style scoped lang="css">
@media screen and (min-width: 300px) {
.presentation{
  width: 100%;
  padding: 2rem 0;
  display: flex;
  align-items: center;
  justify-content: center;

}
  .wrapper_reviews {
    width: 100%;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    position: relative;
  }

  .wrapper_reviews .general_reviews {
    width: 100%;
    height: 100%;
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    justify-content: center;
    border-radius: 7px;
    box-shadow: var(--S_box-shadow);
    background: #f6f6f6;
  }

  .wrapper_reviews .general_reviews .card_reviews {
    height: 200px;
    margin: 2.3rem 4.5rem;
  }
}

@media screen and (min-width: 450px) {
  .wrapper_reviews {
    width: 450px
  }
}

@media screen and (min-width: 1300px) {

  .wrapper_reviews {
    width: 68%;
    height: 500px;

  }

  .wrapper_reviews .general_reviews .card_reviews {
    margin: 2.3rem 1.5rem;
  }
}
</style>
