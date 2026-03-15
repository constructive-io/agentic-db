-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_memberships/columns/updated_at/alterations/alt0000000316


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".org_memberships 
  ALTER COLUMN updated_at DROP DEFAULT;


