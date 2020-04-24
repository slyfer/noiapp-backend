vcl 4.0;

backend default {
  .host = "localhost:8080";
  .max_connections = 1000;
  .thread_pool_min = 100;
  .thread_pool_max = 1000;
  .thread_pools = 4;
}
