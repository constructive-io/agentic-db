-- Deploy: schemas/agent_db_app_public/tables/session_archives/columns/entity_id/alterations/alt0000001282
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/session_archives/table
-- requires: schemas/agent_db_app_public/tables/context_relations/columns/strength/column
-- requires: schemas/agent_db_app_public/tables/session_archives/columns/entity_id/column


ALTER TABLE agent_db_app_public.session_archives 
  ALTER COLUMN entity_id SET NOT NULL;

