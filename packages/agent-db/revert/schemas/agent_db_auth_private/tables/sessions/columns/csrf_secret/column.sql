-- Revert: schemas/agent_db_auth_private/tables/sessions/columns/csrf_secret/column


ALTER TABLE "agent_db_auth_private".sessions 
  DROP COLUMN csrf_secret RESTRICT;


