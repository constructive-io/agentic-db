-- Revert: schemas/agentic_db_auth_private/tables/sessions/constraints/sessions_pkey/constraint


ALTER TABLE "agentic_db_auth_private".sessions 
  DROP CONSTRAINT sessions_pkey;


