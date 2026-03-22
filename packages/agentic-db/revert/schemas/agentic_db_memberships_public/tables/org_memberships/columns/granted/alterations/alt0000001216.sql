-- Revert: schemas/agentic_db_memberships_public/tables/org_memberships/columns/granted/alterations/alt0000001216


ALTER TABLE "agentic_db_memberships_public".org_memberships 
  ALTER COLUMN granted DROP NOT NULL;


