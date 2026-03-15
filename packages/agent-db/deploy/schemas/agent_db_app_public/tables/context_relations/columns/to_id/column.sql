-- Deploy: schemas/agent_db_app_public/tables/context_relations/columns/to_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/context_relations/table
-- requires: schemas/agent_db_app_public/tables/context_relations/columns/to_type/alterations/alt0000001277


ALTER TABLE agent_db_app_public.context_relations 
  ADD COLUMN to_id uuid;

