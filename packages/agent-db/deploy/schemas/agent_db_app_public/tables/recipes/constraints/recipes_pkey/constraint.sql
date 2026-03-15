-- Deploy: schemas/agent_db_app_public/tables/recipes/constraints/recipes_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/recipes/table
-- requires: schemas/agent_db_app_public/tables/notifications/columns/source_entity_type/column


ALTER TABLE agent_db_app_public.recipes 
  ADD CONSTRAINT recipes_pkey PRIMARY KEY (id);

