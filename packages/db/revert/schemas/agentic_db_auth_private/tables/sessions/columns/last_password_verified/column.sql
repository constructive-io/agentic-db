-- Revert: schemas/agentic_db_auth_private/tables/sessions/columns/last_password_verified/column


ALTER TABLE "agentic_db_auth_private".sessions 
  DROP COLUMN last_password_verified RESTRICT;


