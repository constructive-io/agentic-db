-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_grants/columns/created_at/alterations/alt0000002040


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_grants 
  ALTER COLUMN created_at DROP DEFAULT;


