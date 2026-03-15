-- Revert: schemas/agent_db_app_public/tables/tags/columns/category/column


ALTER TABLE agent_db_app_public.tags 
  DROP COLUMN category RESTRICT;


