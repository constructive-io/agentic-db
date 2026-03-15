-- Deploy: schemas/agent_db_app_public/tables/context_relations/columns/reason/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/context_relations/table
-- requires: schemas/agent_db_app_public/tables/context_relations/columns/relation_kind/column


ALTER TABLE agent_db_app_public.context_relations 
  ADD COLUMN reason text;

