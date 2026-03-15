-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-private/trigger_fns/org_org_chart_edge_delete_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/schema


CREATE FUNCTION "agent-os-1773551593867-bac64076-memberships-private".org_org_chart_edge_delete_tg() RETURNS TRIGGER AS $_PGFN_$

            BEGIN
                PERFORM "agent-os-1773551593867-bac64076-memberships-private".org_rebuild_org_hierarchy_sprt(OLD.entity_id);
                RETURN OLD;
            END;
        
$_PGFN_$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

