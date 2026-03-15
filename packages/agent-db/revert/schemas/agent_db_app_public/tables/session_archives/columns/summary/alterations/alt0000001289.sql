-- Revert: schemas/agent_db_app_public/tables/session_archives/columns/summary/alterations/alt0000001289


ALTER TABLE agent_db_app_public.session_archives 
  ALTER COLUMN summary DROP NOT NULL;


