<template>
  <div>
    Starting example!
    <h1>Called</h1>
  </div>
</template>

<script>
export default {
  async asyncData({ app }) {
    const response = await app.$client.get('test/starting/')
    return response.data
  },
  head() {
    return {
      title: this.title,
    }
  },
}
</script>