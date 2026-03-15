-- Revert: schemas/agent_db_app_public/tables/tools/columns/auth_method/column


ALTER TABLE agent_db_app_public.tools 
  DROP COLUMN auth_method RESTRICT;


