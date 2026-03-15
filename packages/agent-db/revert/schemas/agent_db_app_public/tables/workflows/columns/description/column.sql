-- Revert: schemas/agent_db_app_public/tables/workflows/columns/description/column


ALTER TABLE agent_db_app_public.workflows 
  DROP COLUMN description RESTRICT;


