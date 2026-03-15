-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_grants/columns/entity_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".org_grants 
  DROP COLUMN entity_id RESTRICT;


