-- Deploy: schemas/agentic_db_app_public/tables/provider_sync_states/constraints/provider_sync_states_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/provider_sync_states/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx


ALTER TABLE "agentic_db_app_public".provider_sync_states 
  ADD CONSTRAINT provider_sync_states_pkey PRIMARY KEY (id);

