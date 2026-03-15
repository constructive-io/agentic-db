-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_owner_grants/columns/entity_id/alterations/alt0000000411


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".org_owner_grants 
  ALTER COLUMN entity_id DROP NOT NULL;


