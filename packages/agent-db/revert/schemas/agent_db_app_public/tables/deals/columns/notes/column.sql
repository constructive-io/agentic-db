-- Revert: schemas/agent_db_app_public/tables/deals/columns/notes/column


ALTER TABLE agent_db_app_public.deals 
  DROP COLUMN notes RESTRICT;


