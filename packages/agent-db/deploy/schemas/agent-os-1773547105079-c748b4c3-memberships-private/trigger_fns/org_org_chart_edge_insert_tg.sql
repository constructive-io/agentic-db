-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-private/trigger_fns/org_org_chart_edge_insert_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-private/schema


CREATE FUNCTION "agent-os-1773547105079-c748b4c3-memberships-private".org_org_chart_edge_insert_tg() RETURNS TRIGGER AS $_PGFN_$

            BEGIN
                PERFORM "agent-os-1773547105079-c748b4c3-memberships-private".org_rebuild_org_hierarchy_sprt(NEW.entity_id);
                RETURN NEW;
            END;
        
$_PGFN_$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

