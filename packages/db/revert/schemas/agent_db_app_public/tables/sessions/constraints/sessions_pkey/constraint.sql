-- Revert: schemas/agent_db_app_public/tables/sessions/constraints/sessions_pkey/constraint


ALTER TABLE "agent_db_app_public".sessions 
  DROP CONSTRAINT sessions_pkey;


