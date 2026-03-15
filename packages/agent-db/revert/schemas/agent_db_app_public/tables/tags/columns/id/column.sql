-- Revert: schemas/agent_db_app_public/tables/tags/columns/id/column


ALTER TABLE agent_db_app_public.tags 
  DROP COLUMN id RESTRICT;


