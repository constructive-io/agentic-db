-- Revert: schemas/agent_db_app_public/tables/ideas/constraints/ideas_pkey/constraint


ALTER TABLE "agent_db_app_public".ideas 
  DROP CONSTRAINT ideas_pkey;


