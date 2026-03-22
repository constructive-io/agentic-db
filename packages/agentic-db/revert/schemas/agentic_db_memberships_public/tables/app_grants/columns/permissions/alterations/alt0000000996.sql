-- Revert: schemas/agentic_db_memberships_public/tables/app_grants/columns/permissions/alterations/alt0000000996


ALTER TABLE "agentic_db_memberships_public".app_grants 
  ALTER COLUMN permissions DROP NOT NULL;


