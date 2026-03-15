-- Deploy: schemas/agent_db_app_public/tables/context_relations/columns/from_id/alterations/alt0000001276
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/context_relations/table
-- requires: schemas/agent_db_app_public/tables/context_relations/columns/from_id/column
-- requires: schemas/agent_db_app_public/tables/context_relations/columns/from_type/alterations/alt0000001275


ALTER TABLE agent_db_app_public.context_relations 
  ALTER COLUMN from_id SET NOT NULL;

