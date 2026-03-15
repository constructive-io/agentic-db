-- Revert: schemas/agent_db_app_public/tables/notes/columns/contact_id/column


ALTER TABLE agent_db_app_public.notes 
  DROP COLUMN contact_id RESTRICT;


