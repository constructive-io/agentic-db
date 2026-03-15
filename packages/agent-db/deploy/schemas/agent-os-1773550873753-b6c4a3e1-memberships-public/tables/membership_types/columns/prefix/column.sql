-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/membership_types/columns/prefix/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/membership_types/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".membership_types 
  ADD COLUMN prefix text;

