-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/membership_types/columns/prefix/alterations/alt0000000022
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/membership_types/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/membership_types/columns/prefix/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".membership_types 
  ALTER COLUMN prefix SET NOT NULL;

