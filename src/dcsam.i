/**
* Wrapped interface file
*
*/

namespace dcsam {

#include <dcsam/HybridFactorGraph.h>
/* class HybridFactorGraph { */
/*   HybridFactorGraph(); */

/*   template <typename NonlinearFactorType> */
/*   void push_nonlinear(const NonlinearFactorType &nonlinearFactor) { */
/*     nonlinearGraph_.push_back( */
/*         boost::make_shared<NonlinearFactorType>(nonlinearFactor)); */
/*   } */
/*   void push_nonlinear( */
/*       boost::shared_ptr<gtsam::NonlinearFactor> nonlinearFactor); */
/*   template <typename DiscreteFactorType> */

/*   void push_discrete(const DiscreteFactorType &discreteFactor) { */
/*     discreteGraph_.push_back( */
/*         boost::make_shared<DiscreteFactorType>(discreteFactor)); */
/*   } */
/*   void push_discrete(boost::shared_ptr<gtsam::DiscreteFactor> discreteFactor); */
/*   template <typename DCFactorType> */

/*   void push_dc(const DCFactorType &dcFactor) { */
/*     dcGraph_.push_back(boost::make_shared<DCFactorType>(dcFactor)); */
/*   } */
/*   void push_dc(boost::shared_ptr<DCFactor> dcFactor); */

/*   void print(const std::string &str = "HybridFactorGraph", */
/*              const gtsam::KeyFormatter &keyFormatter = */
/*                  gtsam::DefaultKeyFormatter) const; */

/*   gtsam::FastSet<gtsam::Key> keys() const; */

/*   gtsam::NonlinearFactorGraph nonlinearGraph() const; */

/*   gtsam::DiscreteFactorGraph discreteGraph() const; */

/*   DCFactorGraph dcGraph() const; */

/*   bool empty() const; */

/*   bool equals(const HybridFactorGraph &other, double tol = 1e-9) const; */

/*   size_t size() const; */

/*   size_t size_nonlinear() const; */

/*   size_t size_discrete() const; */

/*   size_t size_dc() const; */

/*   void clear(); */
/* }; */

}  // namespace dcsam
