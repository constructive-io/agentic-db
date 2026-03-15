-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_owner_grants/columns/is_grant/alterations/alt0000000406


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".org_owner_grants 
  ALTER COLUMN is_grant DROP NOT NULL;


