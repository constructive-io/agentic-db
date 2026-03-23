-- Revert: schemas/agentic_db_memberships_public/tables/app_memberships/columns/updated_at/alterations/alt0000000066


ALTER TABLE "agentic_db_memberships_public".app_memberships 
  ALTER COLUMN updated_at DROP DEFAULT;


