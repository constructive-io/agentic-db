-- Deploy: schemas/agent_db_app_public/tables/context_relations/columns/to_type/alterations/alt0000001277
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/context_relations/table
-- requires: schemas/agent_db_app_public/tables/context_relations/columns/to_type/column
-- requires: schemas/agent_db_app_public/tables/context_relations/columns/from_id/alterations/alt0000001276


ALTER TABLE agent_db_app_public.context_relations 
  ALTER COLUMN to_type SET NOT NULL;

