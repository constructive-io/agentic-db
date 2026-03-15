-- Revert: schemas/agent_db_app_public/tables/sessions/columns/entity_id/alterations/alt0000001052


ALTER TABLE agent_db_app_public.sessions 
  ALTER COLUMN entity_id DROP NOT NULL;


