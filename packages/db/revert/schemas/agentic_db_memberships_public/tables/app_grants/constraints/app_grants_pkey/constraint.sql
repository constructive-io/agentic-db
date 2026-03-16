-- Revert: schemas/agentic_db_memberships_public/tables/app_grants/constraints/app_grants_pkey/constraint


ALTER TABLE "agentic_db_memberships_public".app_grants 
  DROP CONSTRAINT app_grants_pkey;


