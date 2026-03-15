-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/membership_types/columns/id/alterations/alt0000000016
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/membership_types/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/membership_types/columns/id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".membership_types 
  ALTER COLUMN id SET NOT NULL;

