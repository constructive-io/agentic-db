-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/membership_types/columns/name/alterations/alt0000000018
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/membership_types/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/membership_types/columns/name/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".membership_types 
  ALTER COLUMN name SET NOT NULL;

