-- Deploy: schemas/agent_db_app_public/tables/context_relations/constraints/context_relations_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/context_relations/table
-- requires: schemas/agent_db_app_public/tables/agent_spawns/columns/completed_at/column


ALTER TABLE agent_db_app_public.context_relations 
  ADD CONSTRAINT context_relations_pkey PRIMARY KEY (id);

